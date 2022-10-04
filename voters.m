% Code for "Voters's Data Entry" created by Arnaja Mitra.
function data=voters(database, varargin)

% Check if initial data fiels are empty or not? If so creat default
% structure.
if isempty(database)
    data=struct('Name',{},'ID',{});
end

% Check there are even number of new input argument, otherwise return to
% base.
if rem(nargin,2)==0
    data=database;
    return
end

% If all data types are fulfilled update it.
n=length(varargin)/2;
for i= 1:n
    j= 2*i;
if (ischar(varargin{j-1}) || isstring(varargin{j-1})) && isa(varargin{j},'double') && (fix(varargin{j})==varargin{j})
    data(i)=struct('Name', convertCharsToStrings(varargin{(j)-1}), 'ID', double(varargin{j}));
else
    data=database;
    return
end
end

% New database.
data=[database data];
end