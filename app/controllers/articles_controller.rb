class ArticlesController<ApplicationController 
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end
    def new
        
    end
    def create
        # render plain: params[:article]
        @article = Article.new(article_params)
        @article.save
        redirect_to @article
        # redirect_to article_path(@article)
    end

     private

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
