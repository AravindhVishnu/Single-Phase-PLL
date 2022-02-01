function [Usamp_sine, Usamp_cos] = orthogonalSignalGenerator(U_in, period)

BUFFER_SIZE = 300;
SAMPLE_TIME = 125e-6;

% The persistent variables are retained in memory before calls to the function
persistent array_values_U;
persistent voltage_meas_last_index;

% Initialize the persistent variables
if isempty(voltage_meas_last_index)
    array_values_U = zeros(BUFFER_SIZE, 1);
    voltage_meas_last_index = 0;
end

% Execute the buffer and start storing the data
voltage_meas_last_index = voltage_meas_last_index + 1;
if (voltage_meas_last_index == BUFFER_SIZE+1)
    voltage_meas_last_index = 1;
end

array_values_U(voltage_meas_last_index) = U_in;

Usamp_sine = array_values_U(voltage_meas_last_index);

% Number of samples per period
num_of_samples = period / SAMPLE_TIME;

degree_back_90 = round(num_of_samples / 4);

if (voltage_meas_last_index - degree_back_90 <= 1)
    index_90 = (BUFFER_SIZE - (degree_back_90 - voltage_meas_last_index) - 1);
else
	index_90 = voltage_meas_last_index - degree_back_90 - 1;
end

Usamp_cos = array_values_U(index_90);
Usamp_cos = -Usamp_cos;

end