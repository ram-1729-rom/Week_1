ECG_Data = importdata("ECG_Data.txt");
figure
plot(ECG_Data);
xlabel('Samples');
ylabel('Data')
title('ECG data')
grid on


% question 3-2
RainFall_Jan = importdata('RainFallIndia_Jan.txt');
RainFall_July = importdata('RainFallIndia_July.txt');

subplot(2,1,1);
histogram(RainFall_Jan);
title('Rainfall: Jan')
grid on

subplot(2,1,2);
histogram(RainFall_July);
title('Rainfall: July')
grid on

disp('Mean rainfall - Jan');
mean(RainFall_Jan)
disp('Mean rainfall - July');
mean(RainFall_July)

disp('standard deviation - Jan');
std(RainFall_Jan)
disp('standard deviation - July');
std(RainFall_July)


% question 3-3
audio_data=importdata("Track002.wav");
[y,Fs]=audioread('Track002.wav'); 
sound(y,Fs);