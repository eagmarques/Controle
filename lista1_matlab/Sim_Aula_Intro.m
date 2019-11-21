%Simulação Slide 20 - Aula Intro Controle
syms w t;
f = t*exp(-t)*cos(5*t);
laplace(f)

m=0.5;
c=1;
k=50;

sim("Aula_Intro");
run("Aula_Intro");

num = [1 -0.4];
den = [1 -0.8 144.1600];

H = tf(10,[1 10 32 32]);

ilaplace(H)

step(H);
hold;
plot(y_sim);
figure;
impulse(H);


