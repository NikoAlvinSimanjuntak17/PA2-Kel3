<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Str;


class AuthenticatedSessionController extends Controller
{
//     public function authenticated(Request $request, $user)
// {
//     if ($user->hasRole('admin')) {
//         return redirect()->intended('/admin-dashboard');
//     } else if ($user->hasRole('user')) {
//         return redirect()->intended('/user-dashboard');
//     }
// }
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();

        // Tambahkan kode berikut untuk menangani "Remember Me" tanpa batasan waktu
        if ($request->filled('remember')) {
            $user = Auth::user();
            $user->setRememberToken(Str::random(60));
            $user->save();

            $recaller = $user->getRememberTokenName().'|'.$user->getRememberToken().'|'.$user->getKey();

            Auth::guard('web')->getCookieJar()->queue(Auth::guard('web')->getCookieJar()->forever(
                Auth::guard('web')->getRecallerName(), $recaller
            ));
        }

        if (auth()->user()->hasRole('admin')) {
            return redirect()->intended(RouteServiceProvider::ADMIN_HOME);
        } else {
            return redirect()->intended(RouteServiceProvider::HOME);
        }
    }
    protected function sendFailedLoginResponse(Request $request): void
{
    throw ValidationException::withMessages([
        'message' => 'Username atau password Anda salah.',
    ]);
}

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
