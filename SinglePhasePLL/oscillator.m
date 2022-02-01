function y = oscillator(u)

persistent previous_value;

DELTA = 125e-6;

if isempty(previous_value)
    previous_value = 0;
end

current_value = u * DELTA + previous_value;
y = mod(current_value,2*pi);

previous_value = current_value;

end