class Libpuzzle < Formula
  homepage 'http://libpuzzle.pureftpd.org/project/libpuzzle'
  head 'https://github.com/jedisct1/libpuzzle.git', :branch => 'master'
  sha1 ''

  depends_on 'gd'

  def install
    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end