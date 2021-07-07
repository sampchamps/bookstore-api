class CatgoryRepresenter
    def def initialize(catgory)
      @catgory = catgory
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
    attr_reader :catgroy
end