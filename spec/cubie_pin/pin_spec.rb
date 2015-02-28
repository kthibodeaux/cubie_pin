require 'spec_helper'
include CubiePin

describe Pin do

  describe '.new' do
    context ':pin missing in options hash' do
      it 'raises an error' do
        expect { Pin.new(:direction => :out) }.to raise_error
      end
    end

    context ':direction missing in options hash' do
      it 'raises an error' do
        expect { Pin.new(:pin => 5) }.to raise_error
      end
    end

    context ':direction is anything but :out' do
      it 'raises an error' do
        expect { Pin.new(:pin => 5, :direction => :in) }.
          to raise_error(NotImplementedError)
      end
    end
  end

  describe '#on' do
    context 'the pin is disabled' do
      it 'raises and error' do
        pin = Pin.new(:pin => 1, :direction => :out)
        allow(pin).to receive(:enabled?).and_return(false)

        expect { pin.on }.to raise_error(CanNotOperateOnDisabledPinError)
      end
    end

    context 'the pin is enabled' do
      context 'the pin is an output pin' do
        it 'turns the pin on' do

        end

        it 'returns the pin object' do

        end
      end

      context 'the pin is an input pin' do
        xit 'raises an error' do
        end
      end
    end
  end

  describe '#off' do
    context 'the pin is disabled' do
      it 'raises and error' do

      end
    end

    context 'the pin is enabled' do
      context 'the pin is an output pin' do
        it 'turns the pin off' do

        end

        it 'returns the pin object' do

        end
      end

      context 'the pin is an input pin' do
        xit 'raises an error' do
        end
      end
    end
  end

  describe '#on?' do
    context 'the pin is disabled' do
      it 'raises an error' do

      end
    end

    context 'the pin is enabled' do
      context 'the pins value is 1' do
        it 'returns true' do

        end
      end

      context 'the pins value is 0' do
        it 'returns false' do

        end
      end
    end
  end

  describe '#off?' do
    context 'the pin is disabled' do
      it 'raises an error' do

      end
    end

    context 'the pin is enabled' do
      context 'the pins value is 1' do
        it 'returns false' do

        end
      end

      context 'the pins value is 0' do
        it 'returns true' do

        end
      end
    end
  end

  describe '#read' do
    context 'the pin is disabled' do
      it 'raises an error' do

      end
    end

    context 'the pin is enabled' do
      it 'returns the value of the pin' do

      end
    end
  end

  describe '#enable' do
    context 'the pin is enabled' do
      it 'does nothing' do

      end
    end

    context 'the pin is disabled' do
      it 'enables the pin' do

      end
    end

    it 'returns the pin object' do

    end
  end

  describe '#disable' do
    context 'the pin is disabled' do
      it 'does nothing' do

      end
    end

    context 'the pin is enabled' do
      it 'disables the pin' do

      end
    end

    it 'returns the pin object' do

    end
  end

  describe 'enabled?' do
    context 'the pin is enabled' do
      it 'returns true' do

      end
    end

    context 'the pin is not enabled' do
      it 'returns false' do

      end
    end
  end

  describe 'disabled?' do
    context 'the pin is disabled' do
      it 'returns true' do

      end
    end

    context 'the pin is not disabled' do
      it 'returns false' do

      end
    end
  end

end
