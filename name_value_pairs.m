% "NameValue Pairs short code by Arnaja Mitra."
function O = name_value_pairs(varargin)
% Checking input nonempty and even
if nargin == 0 || rem(numel(varargin),2)~=0
    O = {};
    return;
end
O = reshape(varargin,2,[]).';
% Checking name cell are char
if ~all(cellfun(@ischar, O(:,1)))
    O={};
end
end
