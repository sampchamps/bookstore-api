class CatgoriesRepresenter
    def initialize(catgories)
      @catgories = catgories
    end

    def as_json
        catgories.map do |catgory|

            {
                id:catgory.id,
                name: catgory.name
            }
    
        end
    end
    
    private
    attr_reader :catgories
end