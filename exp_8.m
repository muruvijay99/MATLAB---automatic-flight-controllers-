a=tf([-0.213],[1 0.028])*tf([1 1.2],[1 1.13]);
b=tf([1 0.6 0.1525],[1 0.24 0.2843])*tf([-15],[1 15])*a;
c=b*tf([1 0],[1,1]);
d=4.18*feedback(c,4.18,-1);
zpk(d)
figure(1);
rlocus(d);
figure(2);
impulse(d);
hold on;
impulse(c);