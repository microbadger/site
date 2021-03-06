defmodule ElixirLangMoscow.SpeakerTest do
  use ElixirLangMoscow.ModelCase

  alias ElixirLangMoscow.Speaker

  @valid_attrs %{name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Speaker.changeset(%Speaker{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Speaker.changeset(%Speaker{}, @invalid_attrs)
    refute changeset.valid?
  end

  test "slug generation" do
    changeset = Speaker.changeset(%Speaker{}, @valid_attrs)
    speaker = Repo.insert!(changeset)

    assert speaker.slug == "some-content"
  end
end
