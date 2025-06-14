# English Language Module for Raku
# Adds UK English spelling variants to complement US spellings

sub EXPORT(|) {
    # === String Functions ===
    # UK/US variants for string manipulation
    my &capitalise = my &capitalize = sub ($str) { $str.tc };
    my &lower_case = my &lowercase = sub ($str) { $str.lc };
    my &upper_case = my &uppercase = sub ($str) { $str.uc };
    
    # === Math/Maths Functions ===
    # UK uses "maths", US uses "math"
    my &maths_add = my &math_add = sub ($a, $b) { $a + $b };
    my &maths_subtract = my &math_subtract = sub ($a, $b) { $a - $b };
    my &maths_multiply = my &math_multiply = sub ($a, $b) { $a * $b };
    my &maths_divide = my &math_divide = sub ($a, $b) { $a / $b };
    my &maths_round = my &math_round = sub ($n) { $n.round };
    my &maths_floor = my &math_floor = sub ($n) { $n.floor };
    my &maths_ceiling = my &math_ceiling = sub ($n) { $n.ceiling };
    my &maths_abs = my &math_abs = sub ($n) { $n.abs };
    my &maths_sqrt = my &math_sqrt = sub ($n) { $n.sqrt };
    my &maths_power = my &math_power = sub ($base, $exp) { $base ** $exp };
    
    # === Boolean Values ===
    # Traditional British/Scottish variants
    my \yes = my \aye = True;
    my \no = my \nay = False;
    
    # === Additional String Functions ===
    my &centre = my &center = sub ($str, $width, $fill = ' ') { 
        my $padding = $width - $str.chars;
        return $str if $padding <= 0;
        my $left = $padding div 2;
        my $right = $padding - $left;
        ($fill x $left) ~ $str ~ ($fill x $right)
    };
    
    my &colour_code = my &color_code = sub ($name) {
        my %codes = 
            red => "\e[31m",
            green => "\e[32m",
            blue => "\e[34m",
            grey => "\e[90m",
            gray => "\e[90m";
        %codes{$name} // ""
    };
    
    my &normalise = my &normalize = sub ($str) {
        $str.trim.lc.subst(/\s+/, '-', :g).subst(/[\-_]+/, '-', :g)
    };
    
    my &emphasise = my &emphasize = sub ($str) {
        "*$str*"
    };
    
    my &serialise = my &serialize = sub ($data) {
        $data.raku
    };
    
    my &analyse_text = my &analyze_text = sub ($text) {
        {
            chars => $text.chars,
            words => $text.words.elems,
            lines => $text.lines.elems,
        }
    };
    
    # === Export all symbols ===
    Map.new(
        # String functions
        '&capitalise' => &capitalise,
        '&capitalize' => &capitalize,
        '&lower_case' => &lower_case,
        '&lowercase' => &lowercase,
        '&upper_case' => &upper_case,
        '&uppercase' => &uppercase,
        '&centre' => &centre,
        '&center' => &center,
        '&colour_code' => &colour_code,
        '&color_code' => &color_code,
        '&normalise' => &normalise,
        '&normalize' => &normalize,
        '&emphasise' => &emphasise,
        '&emphasize' => &emphasize,
        '&serialise' => &serialise,
        '&serialize' => &serialize,
        '&analyse_text' => &analyse_text,
        '&analyze_text' => &analyze_text,
        
        # Math functions
        '&maths_add' => &maths_add,
        '&math_add' => &math_add,
        '&maths_subtract' => &maths_subtract,
        '&math_subtract' => &math_subtract,
        '&maths_multiply' => &maths_multiply,
        '&math_multiply' => &math_multiply,
        '&maths_divide' => &maths_divide,
        '&math_divide' => &math_divide,
        '&maths_round' => &maths_round,
        '&math_round' => &math_round,
        '&maths_floor' => &maths_floor,
        '&math_floor' => &math_floor,
        '&maths_ceiling' => &maths_ceiling,
        '&math_ceiling' => &math_ceiling,
        '&maths_abs' => &maths_abs,
        '&math_abs' => &math_abs,
        '&maths_sqrt' => &maths_sqrt,
        '&math_sqrt' => &math_sqrt,
        '&maths_power' => &maths_power,
        '&math_power' => &math_power,
        
        # Boolean values
        'yes' => yes,
        'aye' => aye,
        'no' => no,
        'nay' => nay,
    )
}