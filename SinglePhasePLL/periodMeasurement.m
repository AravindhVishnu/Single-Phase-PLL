function period = periodMeasurement(time,new_value)
% Period measurement

% The persistent variables are retained in memory before calls to the function
persistent previous_value;
persistent previous_zerocross;
persistent new_zerocross;
persistent period_fp;
persistent previous_time

% Initialize the persistent variables
if isempty(previous_value)
    previous_value = 0;
    previous_zerocross = 0;
    new_zerocross = 0;
    period_fp = 0.018;
    previous_time = 0;
end

new_value = new_value - pi;

if (new_value < 0 && previous_value >= 0)
        
    t_1 = time;

    t_2 = previous_time;

    new_zerocross = ((((0 - previous_value) * (t_1 - t_2))/(new_value - previous_value)) + t_2);

    period_fp = new_zerocross - previous_zerocross;
        
end

period = period_fp;

previous_zerocross = new_zerocross;

previous_value = new_value;

previous_time = time;

end