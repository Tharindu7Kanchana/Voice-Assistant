% Record your voice for 5 seconds.
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');

% Play back the recording.
%play(recObj);
save recObj recObj;

y=load('recObj.mat');
audiowrite('Voice.wav',y,44000);
clear y Fs

% Store data in double-precision array.
myRecording = getaudiodata(recObj);

% Plot the waveform.
plot(myRecording);