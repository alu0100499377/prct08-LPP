require 'rspec'
require './lib/prac8'

describe Matrices do
        
        before :each do
                @mx = Matrices.new
                @a, @b = @mx.read_matrices('./lib/datos.dat')
        end
        
        it "Muestra la matriz A" do
                @mx.mostrar(@a).should eq "[ 1.0 2.0 3.0 ]\n[ 4.0 5.0 6.0 ]\n[ 7.0 8.0 9.0 ]\n"
        end

        it "Muestra la matriz B" do
                @mx.mostrar(@b).should eq "[ 1.0 2.0 7.0 ]\n[ 3.0 4.0 8.0 ]\n[ 5.0 6.0 9.0 ]\n"
        end

        it "Suma 2 matrices" do
                @mx.mostrar(@mx.suma(@a,@b)).should eq "[ 2.0 4.0 10.0 ]\n[ 7.0 9.0 14.0 ]\n[ 12.0 14.0 18.0 ]\n"
        end

        it "Multiplica 2 matrices" do
                @mx.mostrar(@mx.producto(@a,@b)).should eq "[ 22.0 28.0 50.0 ]\n[ 49.0 64.0 122.0 ]\n[ 76.0 100.0 194.0 ]\n"
        end

end
	   
	   
