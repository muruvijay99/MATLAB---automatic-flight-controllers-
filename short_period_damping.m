a=tf([-10],[1,10])*tf([-1.39],[1 0])*tf([1 0.306],[1 0.806 1.325])
b=tf([1 0],[1])*a
c=feedback(b,0.661,-1);
d=c*tf([1],[1 0]);
e=feedback(d,0.486,-1)*0.486;
zpk(e)
figure(1);
rlocus(e);
f=tf([0.306],[1 0.306])*tf([1 0.08786],[0.08786])*e;
figure(2);
step(e);
hold on;
step(f);