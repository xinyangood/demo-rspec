require 'rails_helper'

RSpec.describe Girl, type: :model do

  before(:all) do
    params_1 = { single: true, beautiful: false }
    params_2 = { single: true, beautiful: true }
    @girl_1 = Girl.new(params_1)
    @girl_2 = Girl.new(params_2)
  end

  ########################################################
  # 测试用例1-1
  # 创建了一个 单身 但不漂亮的 女孩, 来验证 have_chance? 方法
  it "have chance? {single but not beautiful}" do
    expect(@girl_1.have_chance?).to eq(true)
  end

  # 测试用例1-2
  # 创建了一个 单身 但不漂亮的 女孩, 来验证 suit_my_taste? 方法
  it "suit my taste? {single but not beautiful}" do
    expect(@girl_1.suit_my_taste?).to eq(true)
  end

  ########################################################
  # 测试用例2-1
  # 创建了一个 单身 但不漂亮的 女孩, 来验证 have_chance? 方法
  it "have chance? {single but not beautiful}" do
    expect(@girl_2.have_chance?).to eq(true)
  end

  # 测试用例2-2
  # 创建了一个 既单身又漂亮的 女孩, 来验证 suit_my_taste? 方法
  it "suit my taste? {single but not beautiful}" do
    expect(@girl_2.suit_my_taste?).to eq(true)
  end

  # 使用 subject
  subject(:girl_1){ @girl_1 }
  subject(:girl_2){ @girl_2 }

  it "girl_1.have chance?" do
    expect(girl_1.have_chance?).to eq(true)
  end
  it "girl_1.suit my taste?" do
    expect(girl_1.suit_my_taste?).to eq(true)
  end

  it "girl_2.have chance?" do
    expect(girl_2.have_chance?).to eq(true)
  end
  it "girl_2.suit my taste?" do
    expect(girl_2.suit_my_taste?).to eq(true)
  end

  # 使用let
  let(:girl1){ Girl.new({ single: true, beautiful: false }) }
  let(:girl2){ Girl.new({ single: true, beautiful: true }) }

  it "girl1.have chance?" do
    expect(girl1.have_chance?).to eq(true)
  end
  it "girl1.suit my taste?" do
    expect(girl1.suit_my_taste?).to eq(true)
  end

  it "girl2.have chance?" do
    expect(girl2.have_chance?).to eq(true)
  end
  it "girl2.suit my taste?" do
    expect(girl2.suit_my_taste?).to eq(true)
  end

end
