function M=getfcs(i)
A=getfc(i);
t=1:480;
[pksa,locsa]=findpeaks(A,'minpeakdistance',5);plot(t,A,'b',locsa,pksa,'bo');
[a,k]=size(pksa);
M=a;