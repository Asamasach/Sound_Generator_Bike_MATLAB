clear all;
clc
[y,Fs]=audioread('C:\Users\Mahdi_Sadat\OneDrive\Ronic\sound_wave\m2.wav');
a=100000 %strat
b=500000 %stop
y1=y(a:b,:);
% y1(:,2)=y(a:b,2);
over=150000
z=b-a-over
    for c= 1:over
%      y1(c,:)=y1(c+b-a-over-1,:);
        y1(c,:)=y1(b-a-c,:);
    end
plot(y1);
figure(2);
plot(y)
y2=y1;
% for i=1:3
% y2=[y2;y1];
% end
 sound(y2,Fs);
 plot(y2);