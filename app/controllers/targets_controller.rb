class TargetsController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_target, only: [:show, :edit, :update]

  def index
    @target = Target.new
    @targets = Target.all
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to admin_targets_path
    else
      @targets = Target.all
      render :index
    end
  end

  def edit
  end

  def update
    if @target.update(target_params)
      unless @target.is_active
        @target.items.update_all(is_active: false)
      end
      redirect_to admin_targets_path
    else
      render :edit
    end
  end

  private

  def target_params
    params.require(:target).permit(:name, :is_active)
  end

  def ensure_target
    @target = Target.find(params[:id])
  end
end

