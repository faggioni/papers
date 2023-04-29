function [] = plotwithformat(t, f1, f2, plottitle, legendsarray)
%plotwithformat 
%   Plot with custom format
    plot(t,f1,t,f2,'--'),title(plottitle),legend({legendsarray(1),legendsarray(2)}),grid;
end

