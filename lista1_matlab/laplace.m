syms w t s Vc0 E R C Ve;

T = R*C;
f0 = 1 / s;
f1 = sin(w*t);
f2 = cos(w*t);
Vc = ((T*Vc0)/((T*s)+1)) + T*((T*Ve)/(s*(T*(s+1))));

% plot(f1, t);
% plot(f2, t);
impulse(Vc)
ilaplace(f0)
laplace(f1)
laplace(f2)
ilaplace(Vc)
