a=tf([-20],[1 20])*tf([-1072.8 -380.6],[871.5 0]);
b=a*tf([1],[1 0.836 1.78]);
c=b*tf([1 0],[1])
d=feedback(c,0.367,-1);
e=d*tf([1],[1 0]);
f=1.45*feedback(e,1.45,-1);
g=f*tf([1 0.1814],[0.1814])*tf([0.3548],[1 0.3548]);
zpk(g)
figure(1);
rlocus(g);
figure(2);
step(f);
hold on;
step(g);