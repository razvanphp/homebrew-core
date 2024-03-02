class Coconut < Formula
  include Language::Python::Virtualenv

  desc "Simple, elegant, Pythonic functional programming"
  homepage "http://coconut-lang.org/"
  url "https://files.pythonhosted.org/packages/e6/58/87cda2b6f11f4037b68a649dfe56b53da5de126502f269d23ec16bf04833/coconut-3.1.0.tar.gz"
  sha256 "e404e436e347d31e918d9bc870cc2e93a70b813739bd7b6c5d2353bdf3e6c777"
  license "Apache-2.0"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "24bfe2cd7d55f4b559f40786a08586507ae0b7647a401ab4865b58732739c034"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "bef926d9b3f851d35356ea62327a96e7526742c43a75c52f7e8dede545c1dc72"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "a616344e7845c7f92c72e616728cb722acec304a3e15be5e09dcca96f7c8d311"
    sha256 cellar: :any_skip_relocation, sonoma:         "24fe9a78ee797061b64ff96b8f61dab130e7d5bd83cbc89615c9982d77439d4e"
    sha256 cellar: :any_skip_relocation, ventura:        "4352de9210e7a6fa36d46c7a248696f6bc7665ccf7fb3b2bc9b502a4bd2dd2a7"
    sha256 cellar: :any_skip_relocation, monterey:       "9e10d50938b8813c2413e236873d8983ebe2ed5ec0ab3825fab07560efb9f3b4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "74a2c654f63132e71568e340d6be7747e16d538dede45953c6e98b4d105ffa37"
  end

  depends_on "python@3.12"

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/db/4d/3970183622f0330d3c23d9b8a5f52e365e50381fd484d08e3285104333d3/anyio-4.3.0.tar.gz"
    sha256 "f75253795a87df48568485fd18cdd2a3fa5c4f7c5be8e5e36637733fce06fed6"
  end

  resource "async-generator" do
    url "https://files.pythonhosted.org/packages/ce/b6/6fa6b3b598a03cba5e80f829e0dadbb49d7645f523d209b2fb7ea0bbb02a/async_generator-1.10.tar.gz"
    sha256 "6ebb3d106c12920aaae42ccb6f787ef5eefdcdd166ea3d628fa8476abe712144"
  end

  resource "cpyparsing" do
    url "https://files.pythonhosted.org/packages/f1/2c/be67465b34206c24be7230746f589f0d4adbb60f96e889fc248fd51b9e3d/cPyparsing-2.4.7.2.3.2.tar.gz"
    sha256 "746c6a780f7e64dc717ac1cc28ffbab7841df0672cad851d26cf15faa11a4692"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
    sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/cc/c6/25b6a3d5cd295304de1e32c9edbcf319a52e965b339629d37d42bb7126ca/prompt_toolkit-3.0.43.tar.gz"
    sha256 "3527b7af26106cbc65a040bcc84839a3566ec1b051bb0bfe953631e704b0ff7d"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/90/c7/6dc0a455d111f68ee43f27793971cf03fe29b6ef972042549db29eec39a2/psutil-5.9.8.tar.gz"
    sha256 "6be126e3225486dff286a8fb9a06246a5253f4c7c53b475ea5f5ac934e64194c"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/c8/1f/e026746e5885a83e1af99002ae63650b7c577af5c424d4c27edcf729ab44/setuptools-69.1.1.tar.gz"
    sha256 "5c0806c7d9af348e6dd3777b4f4dbb42c7ad85b190104837488eab9a7c945cf8"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/16/3a/0d26ce356c7465a19c9ea8814b960f8a36c3b0d07c323176620b7b483e44/typing_extensions-4.10.0.tar.gz"
    sha256 "b0abd7c89e8fb96f98db18d86106ff1d90ab692004eb746cf6eda2682f91b3cb"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"hello.coco").write <<~EOS
      "hello, world!" |> print
    EOS
    assert_match "hello, world!", shell_output("#{bin}/coconut -r hello.coco")
  end
end
