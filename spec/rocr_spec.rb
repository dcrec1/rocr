require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

def data(name)
  File.expand_path(File.dirname(__FILE__) + "/data/#{name}")
end

def text1
<<STRING
   tttttttttttt  
12pt TeX-font - generated for OCR testing - Mai99 JS
Roman Typewriter Ital2c Bold-Face Slanted SMALL-CAs Sans-Serif
ABCDEF abcdef, MOPQR mnopq XYZAOU. !?-+=/ '' '' ft ﬀ
GHIJKL ghiJhl; STUVWr stuvw xyäöü ß (01234 56789) <> &$
ABCDEF abcdef , MMOPQR mnopq XYZAOU.  ! ?-+=/ ' '  ' ' ft ff
GHJK ghiJkl; STUVWr stuvw xyzäöü ß (01234 56789) <> &$
ABCDF abcde, MNOPQR nopg XYZAOU, !?-+=/ '' ''tﬀ
GHIKL gh2jhl,' STUVWr stuvw yzäöü ß (0134 567890) <> &
ABCDEF abcdef, MNOPQR mnopq XYAOU. !?-+=/ '' '' ft ﬀ
GHIJKL ghiJkl; STUVWr stuvw xy2äÖü ß (01234 56789) <> &$
ABCDF abcder, MNOPQR mnopq XYZAOU. !?-+=/ '' '' rt ﬀ
GHIKL gijhl,' STUVWr stuvw xyzäöü ß (013 56789) <> &
ABCDEF ABcDEF, MOPQR MoQ XYZAOU. !?-+=/ '' '' FT FF
GHIJKL GHIJKL; STUVWR sTuvw xyzÄÖü ss (01234 56789) <> &$
ABCDEF abcdef, MNOPQR mnopq XYZAOU. !?-+=/ '' '' ft ff
GHIJKL ghiJhl; STUVWr stuvw xyzäöü ß (01234 56789) <> &$
STRING
end

def text2
<<STRING
t t t    
12pt TeX-font - generated for OCR testing - Mai99 JS
Roman Typewriter taljc Bold-Face Slated SmALL-CAs SanSerif
ABCDEF abcdef, MNOPQR mnopq XYZAOU. !?-+=/ '' '' ft A
GHIJKL ghiJkl; STUVWr stuvw xyzäöü ß (01234 56789) <> &$
ABCDEF abcdef, MOPQR mopq XYZAOU.  !?-+=/ ' '  ' ' ft ff
GHJKL hiJkl; STUVWr stuvw yzäöü ß (01234 56789) <> 
ABCDF abcde, NOPQR Tnnopg XYAOU. !?-+≡/ '' '' B
GHXL ghjjkl,' STUVWr stuvw yzäöü ß (0134 56789) <> &
ABCDEF abcder, MNOPQR mnOpq XYAOU. !?-+≡/ '' '' ft ﬀ
GHIJKL ghiJkl; STUVWr stuvw xy26ü ß (O1234 56789) <> &$
ABCDF abcder, NOPQR mopq XYAOU. !?-+=/ '' '' rt ﬀ
GXIXL g6ijXl,' STUVWr stuvw xyzäöü  (0134 56789) <> &
ABCDEF ABcDEF, MOPQR moQ XYZAOU. !?-+=/ '' '' FT FF
GHIJKL GHJKL; STUVWR sTuvw 2ÄÖü ss (01234 56789) <> &$
ABCDEf abcdef, MNOPQR mnopq XYZAOU. !?-+=/ '' '' ft ff
GHIJKL ghijhl; STUVWr stuvw xyzäöü ß (01234 56789) <> &$
STRING
end

describe Rocr::Gocr do
  it "should return the text from an image" do
    Rocr::Gocr.recognize(data("text1.png")).should eql(text1)
  end

  it "should return the text from a pbm file" do
    Rocr::Gocr.recognize(data("text2.pbm")).should eql(text2)
  end
end
