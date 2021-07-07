class CatgoriesRepresenter
    def def initialize(catgory)
      @catgories = catgories
    end

    def as_json
        {
            id:catgory.id,
            name: catgory.name
        }
    end
    
    private
    attr_reader :catgrories
end