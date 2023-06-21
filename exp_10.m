a=tf([1 -7.75],[1 2.2 2.4]);
b=tf([1 7.75],[1 7.8 24]);
c=a*b*-0.83; 
zpk(c)
figure(1);
rlocus(c);
figure(2);
step(c);

