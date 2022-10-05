% Assignment on "Auto Grader" by Arnaja Mitra.
function Result=Grders(func1, func2, varargin)
Result=true;

% Compare two functions results repeatedly for any input either scalar or
% array.
for n = 1:numel(varargin)
    O1 = func1(varargin{n});
    O2 = func2(varargin{n});
    if ~isequal(O1,O2)
        Result = false;
        return % If one fail to match then no need to check for the next argument.
    end
end
