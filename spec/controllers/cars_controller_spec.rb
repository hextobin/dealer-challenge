require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  let(:car) { create(:car) }

  describe "GET #index" do
    it "returns a success response" do
      car
      get :index
      expect(response).to render_template(:index)
      expect(assigns(:cars)).to include(car)
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      car = Car.create! valid_attributes
      get :show, params: {id: car.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      car = Car.create! valid_attributes
      get :edit, params: {id: car.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Car" do
        expect {
          post :create, params: {car: valid_attributes}, session: valid_session
        }.to change(Car, :count).by(1)
      end

      it "redirects to the created car" do
        post :create, params: {car: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Car.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {car: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested car" do
        car = Car.create! valid_attributes
        put :update, params: {id: car.to_param, car: new_attributes}, session: valid_session
        car.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the car" do
        car = Car.create! valid_attributes
        put :update, params: {id: car.to_param, car: valid_attributes}, session: valid_session
        expect(response).to redirect_to(car)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        car = Car.create! valid_attributes
        put :update, params: {id: car.to_param, car: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested car" do
      car = Car.create! valid_attributes
      expect {
        delete :destroy, params: {id: car.to_param}, session: valid_session
      }.to change(Car, :count).by(-1)
    end

    it "redirects to the cars list" do
      car = Car.create! valid_attributes
      delete :destroy, params: {id: car.to_param}, session: valid_session
      expect(response).to redirect_to(cars_url)
    end
  end

end
