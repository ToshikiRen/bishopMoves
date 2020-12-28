function piece = createPiece(type, pixel_size)
    
    if nargin < 1
        disp('Setting piece to bishop!');
        type = 'bishop';
    end
    if isempty(type)
        disp('Setting piece to bishop!');
        type = 'bishop';
    end
    if nargin < 2
        disp('Setting size = 50!');
        pixel_size = 50;
    end
    if isempty(pixel_size)
        disp('Missing size. Setting size = 50!');
        pixel_size = 50;
    end
    switch type
        case 'bishop'
            D = diag(ones(pixel_size,1))/2;
            piece = D + fliplr(D);
            piece = piece + ones(size(piece)) .* 0.25;
            return;
    end

    D = diag(ones(pixel_size,1))/2;
    piece = D + fliplr(D);
    piece = piece + ones(size(piece)) .* 0.25;

end

