// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HeroAndFriendsNamesWithFragmentQuery: GraphQLQuery {
  public static let operationName: String = "HeroAndFriendsNamesWithFragment"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    operationIdentifier: "07c54599c2b5f9d4215d1bff7f5f6ff458c983aa5c13338fd44b051210d5ecc6",
    definition: .init(
      #"query HeroAndFriendsNamesWithFragment($episode: Episode) { hero(episode: $episode) { __typename name ...FriendsNames } }"#,
      fragments: [FriendsNames.self]
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var __variables: Variables? { ["episode": episode] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("hero", Hero?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var hero: Hero? { __data["hero"] }

    public init(
      hero: Hero? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": StarWarsAPI.Objects.Query.typename,
          "hero": hero._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(HeroAndFriendsNamesWithFragmentQuery.Data.self)
        ]
      ))
    }

    /// Hero
    ///
    /// Parent Type: `Character`
    public struct Hero: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .fragment(FriendsNames.self),
      ] }

      /// The name of the character
      public var name: String { __data["name"] }
      /// The friends of the character, or an empty list if they have none
      public var friends: [FriendsNames.Friend?]? { __data["friends"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var friendsNames: FriendsNames { _toFragment() }
      }

      public init(
        __typename: String,
        name: String,
        friends: [FriendsNames.Friend?]? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": __typename,
            "name": name,
            "friends": friends._fieldData,
          ],
          fulfilledFragments: [
            ObjectIdentifier(HeroAndFriendsNamesWithFragmentQuery.Data.Hero.self),
            ObjectIdentifier(FriendsNames.self)
          ]
        ))
      }
    }
  }
}
