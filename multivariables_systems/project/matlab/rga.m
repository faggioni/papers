function [output] = rga(G)
%rga Summary of this function goes here
%   Detailed explanation goes here
    output = G .* pinv(G)';
end

