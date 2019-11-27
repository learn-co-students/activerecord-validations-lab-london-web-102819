class PostValidator < ActiveModel::Validator

    def validate(record)
        if !record.title
            return record.errors[:title] << "Need a title boy"
        end
        unless record.title.match?(/Won't Believe/) || record.title.match?(/Secret/) || record.title.match?(/Top/)
            record.errors[:title] << "Not clickbaity enough"
        end
    end
end