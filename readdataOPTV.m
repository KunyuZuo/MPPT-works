%get the values in the Excel using xlsread.
[num,txt,raw] = xlsread('C:\Users\zuoku\Dropbox\EE608\second_predict_test_data');
%combine data as you want:
AllData={txt;num};%as you want
Time=(num(:,1)-0.99)*0.2;
irr=num(:,2);


t = transpose(Time);
d1 = transpose(irr);
x1 = [t;d1];

ts1 = timeseries(x1(2:end,:),x1(1,:))

save('OPTV','ts1','-v7.3')

