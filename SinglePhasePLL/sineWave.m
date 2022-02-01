function u = sineWave(time,amplitude,frequency)

% Sine waveform with variable frequency and amplitude
u = amplitude * sin(2 * pi * frequency * time);

end