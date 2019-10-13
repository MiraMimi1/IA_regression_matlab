function [j] = Cost_Rekkache(X,Y,Theta)
   m = length(Y);
   % Calculate Hypothes
   hypo = Hypothese_Rekkache(Theta, X);
   % Calculate Cost
    j = 1 / (2 * m) * sum((hypo - Y) .^ 2);
end
