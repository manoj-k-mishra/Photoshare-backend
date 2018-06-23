defmodule InstagramWeb.Resolvers.Reactions do
  alias Instagram.Reactions
#like photo start
  def like_photo(_, %{photo_id: photo_id}, %{context: %{current_user: current_user}}) do
    with {:ok, message} <- Reactions.like_photo(photo_id, current_user.id) do
      {:ok, message}
    end
  end
#like_photo------done
end
