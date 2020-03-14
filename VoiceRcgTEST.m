% Record your voice for 5 seconds.
recObj = audiorecorder;
disp('Start speaking.')
beep
recordblocking(recObj, 5);
disp('End of Recording.');
beep

% Play back the recording.
play(recObj);

% Store data in double-precision array.
myRecording = getaudiodata(recObj);

% Plot the waveform.
plot(myRecording);