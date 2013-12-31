class AddWeightLossPercentageToWeights < ActiveRecord::Migration
  def change
    add_column :weights, :weight_loss_percentage, :decimal
  end
end
