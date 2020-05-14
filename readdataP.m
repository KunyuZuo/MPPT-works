%get the values in the Excel using xlsread.
[num,txt,raw] = xlsread('C:\Users\zuoku\Dropbox\EE608\optimaloutputdata','testing set');
%combine data as you want:
AllData={txt;num};%as you want
Time=(num(:,1)-0.99)*0.2;
irr=num(:,2);
tem=num(:,3);
VolP=num(:,4);
%save in mat file
save('C:\Users\zuoku\Dropbox\EE608\Time','Time');%In your matfile name
save('C:\Users\zuoku\Dropbox\EE608\irr','irr');%In your matfile name
save('C:\Users\zuoku\Dropbox\EE608\tem','tem');%In your matfile name
save('C:\Users\zuoku\Dropbox\EE608\VolP','VolP');%In your matfile name

t = transpose(Time);
d1 = transpose(irr);
x1 = [t;d1];

ts1 = timeseries(x1(2:end,:),x1(1,:))

save('irrtimeseries','ts1','-v7.3')


d2 = transpose(tem);
x2 = [t;d2];

ts2 = timeseries(x2(2:end,:),x2(1,:))

save('temtimeseries','ts2','-v7.3')