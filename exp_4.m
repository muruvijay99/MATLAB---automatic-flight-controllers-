a=tf([-10],[1,10])*tf([-1841.3 -1540.6],[188.3 0])*tf([1],[1 3.911 7.46])
b=1.07*feedback(a,1.07,-1)
c=b*tf([1 0.5546],[0.5546])*tf([0.8365],[1 0.8865]);
zpk(c)
figure(1);
clf;
rlocus(c);
figure(2);
step(c);
hold on;
step(b);