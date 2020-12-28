function [f_x, f_y] = moveTo(x, y)
    
    if nargin < 2
        disp('We need the position of the bishop!!')
        return;
    end
    if isempty(x) || isempty(y)
        disp('One of the input data was found empty!');
        return;
    end
    
    while 1 == 1
        f_x = randi(8);
        f_y = randi(8);
    
        if abs(f_x - x) == abs(f_y - y)
            return;
        elseif (f_x + f_y) == (x + y)
            return;
        end
    end
    
    
end

