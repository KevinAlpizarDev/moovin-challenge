module Api
module V1
  class ChallengeController < ApplicationController

    # GET api/v1/challenges
    def index
      @challenges = Challenge.all
      render json: @challenges
    end

 def create 
challenge = Challenge.new(challenge_params)

if challenges.save 
  render json: {message: 'Challenge created successfully', date: challenge} #Enviamos el objeto challenge
else
  render json: {mesage: 'failed to create challenge', data: challenge.errors }

  end




 end
    
#####################################################

   
      # GET api/v1/challenges/:id
      def show
      
      end
  
      # PATCH/PUT api/v1/challenges/:id
      def update

      end
  
      # DELETE api/v1/challenges/:id
      def destroy

      end


  private


  def challenges_params 
    params.require(:challenge).permit(:title, :descriotion, :start_date, :end_date)
    end
  
    end
  end
  end