require 'pry'

class CouponsController < ApplicationController
#index, show, new, and create methods

    def index
        @coupons = Coupon.all
    end

    def new

    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        @coupon = Coupon.new
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        @coupon[:store] = params[:coupon][:store]
        @coupon.save
        #binding.pry
        redirect_to coupon_path(@coupon)
    end
end
