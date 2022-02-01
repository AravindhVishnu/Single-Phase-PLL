# Single-Phase-PLL
Matlab/Simulink implementation of the Single Phase PLL Algorithm

Description: Phase output follows the input Sine waveform. 
Amplitude and frequency of the input Sine Wave is constantly changed to simulate real world conditions.
There are many Matlab/Simulink single phase PLL implementations available, but what makes this one 
stick out is that it is entirely discrete and structured in such a way that it is easy to port to 
C/C++ in order to for example execute in an embedded device.

Tools: Matlab/Simulink 2021b

Instructions: Open the singlePhasePLL.slx model and run it. Check the results in the scope.
