class PostValidator < ActiveModel::Validator
    def validate(post)
        unless post.title.include? ("Won't Believe" "Secret" "Top [number]" "Guess")
            post.errors[:title] << "This is not clickbait-y enough!"
        end
    end
end