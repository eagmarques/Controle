%Simulação Slide 20 - Aula Intro Controle

m=0.5;
c=1;
k=50;

sim("Aula_Intro");
run("Aula_Intro");

H = tf([1],[m,c,k]);

step(H);
hold;
plot(y_sim);
figure;
impulse(H);


