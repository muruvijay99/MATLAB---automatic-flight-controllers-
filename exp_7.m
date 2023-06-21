a=tf([10],[1,10])*tf([23],[1 2.3])
b=feedback(a,0.236,-1);
c=b*tf([1],[1 0])
d=feedback(c,1.03,-1)*1.03;
e=a*tf([1],[1 0]);
f=feedback(e,0.158,-1)*0.158;
zpk(f) 
zpk(d)
figure(1);
rlocus(f);
figure(2);
rlocus(d);
figure(3);
step(f);
hold on;
step(d);