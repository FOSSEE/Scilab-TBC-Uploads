//j=complex(0,1);
//psi = A*exp(j*k*x);
disp("px = h_cross*k(x)");
disp("If we try to evaluate these integrals directly, we run into the problem that both numerator and denominator tend to infinity, because an ideal plane wave is strictly not a normalizable wave function. The trick to use is to choose the limits of integration from, say, -L/2 to +L/2 in a region of length L.The factor L cancels out in the numerator and denominator. Then we can consider L approaches infinity. For wave functions that are normalizable, such a mathematical trickdoes not have to be used.")