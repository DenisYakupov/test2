<?php

function drawRating($vote) {

    switch ($vote):
        case $vote < 0: return false; break;
        case $vote <= 20: return '*----'; break;
        case $vote <= 40: return '**---'; break;
        case $vote <= 60: return '***--'; break;
        case $vote <= 80: return '****-'; break;
        case $vote <= 100: return '*****'; break;
    endswitch;

    /*
        if ($vote < 0) return false;

        if ($vote <= 20) return '*----';

        if ($vote <= 40) return '**---';

        if ($vote <= 60) return '***--';

        if ($vote <= 80) return '****-';

        if ($vote <= 100) return '*****';
    */
}

echo drawRating(200);