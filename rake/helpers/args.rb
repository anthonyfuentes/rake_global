
module Helper
  module Args

    def self.convert_boolean_args(args)
      mapped_args = map_args(args)

      Hash[mapped_args]
    end

    private

      def self.map_args(args)
        args.map do |key, value|
          if value == "t"
            [key, true]
          elsif value == "f"
            [key, false]
          else
            [key, value]
          end
        end
      end

  end
end
