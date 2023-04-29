function [] = prd(A, B, T, input, time, initialvalue)
%  Plot Response Discrete
%  Detailed explanation goes here
   samples = linspace(0, time, time * (1 / T) + 1);
   %outputs = linspace(0, time, time * (1 / T) + 1);
   outputs(1,1) = (1,1);
   for i=2:length(samples)
       disp(outputs(1,2));
       disp(A);
       disp(A * outputs(i - 1));
       disp((B * input(i)));
       newelement = (A * outputs(i - 1)) + (B * input(i))
       outputs = [outputs newelement];
   end
       figure, plot(samples,outputs);
end

