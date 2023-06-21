a=tf([-20],[1 20]);
b=tf([-18.1 0],[1 1.98 9.92]);
c=tf([1 0.00716],[1])
d=tf([1 1.08],[1 0.0088 0.00506]);
e= a*b*c*d;
f=0.16*feedback(e,0.16,-1);
zpk(f)
figure(1);
rlocus(f);
figure(2);
impulse(f);
hold on;
impulse(e);