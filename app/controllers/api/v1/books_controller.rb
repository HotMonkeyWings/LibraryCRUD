module Api
    module V1
        class BooksController < ApplicationController
            def index
                books = Book.order('created_at DESC');
                render json: {status: 'SUCCESS', message:'Loaded Books', data:books}, status: :ok
            end

            # Fetch the data from the database and send the response in JSON.
            def show 
                book = Book.find(params[:id])
                render json: {status: 'SUCCESS', message:'Loaded Books', data:book}, status: :ok
            end

            # Post the request to the API to perform the database operations. The post request method must display the books newly added to the database collection.
            def create
                book = Book.new(book_params)
                if book.save
                    render json: {status: 'SUCCESS', message:'Loaded Books', data:book}, status: :ok
                else
                    render json: {status: 'ERROR', message:'Book not added', data:book.errors}, status: :unprocessable_entity
                end
            end

            private
            def book_params
                params.permit(:Title, :Author, :Publisher, :Year)
            end
        end
    end
end