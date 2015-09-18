function M=getfrs(i)
A=getfr(i);
t=1:480;
[pksa,locsa]=findpeaks(A,'minpeakdistance',3);plot(t,A,'b',locsa,pksa,'bo');
[a,k]=size(pksa);
M=a;