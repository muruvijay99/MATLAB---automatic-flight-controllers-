a=tf([10 1],[1 0]);
b=tf([60455],[220.1 5062 28613 82648 60455]);
c=tf([221],[6076.1 0]);
d=a*b*c; 
zpk(d)
figure(1);
rlocus(d);
