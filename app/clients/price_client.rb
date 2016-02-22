# Performs sycnronous calls to a service for pricing information and business logic.
class PriceClient < CarrotRpc::RpcClient
  queue_name "price_server"

  # RpcClient class defines index, show, create and update methods
  # @see https://github.com/C-S-D/carrot_rpc/blob/master/lib/carrot_rpc/rpc_client.rb
  # but you can easily add your own methods

  def index
    nil
  end

  def show
    nil
  end

  def update
    nil
  end
end
