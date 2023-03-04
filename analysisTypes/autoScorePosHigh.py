import statistics

def autoScorePosHigh(analysis, rsRobotMatchData, rsRobotL2MatchData, rsRobotPitData):

    rsCEA = {}
    rsCEA['analysisTypeID'] = 81
    numberOfMatchesPlayed = 0
    autoScoreList = []
    
    for matchResults in rsRobotMatchData:
        rsCEA['team'] = matchResults[analysis.columns.index('team')]
        rsCEA['eventID'] = matchResults[analysis.columns.index('eventID')]
        preNoShow = matchResults[analysis.columns.index('preNoShow')]
        scoutingStatus = matchResults[analysis.columns.index('scoutingStatus')]
        if preNoShow == 1:
            rsCEA['M' + str(matchResults[analysis.columns.index('teamMatchNum')]) + 'D'] = 'DNS'
        elif scoutingStatus == 2:
            rsCEA['M' + str(matchResults[analysis.columns.index('teamMatchNum')]) + 'D'] = 'UR'
        else:  
            scorePos1 = matchResults[analysis.columns.index('autoScore1')]
            if (scorePos1 >= 1) and (scorePos1 <= 9):
                autoScoreList.append(scorePos1)
            scorePos2 = matchResults[analysis.columns.index('autoScore2')]
            if (scorePos2 >= 1) and (scorePos2 <= 9):
                autoScoreList.append(scorePos2)
            scorePos3 = matchResults[analysis.columns.index('autoScore3')]
            if (scorePos3 >= 1) and (scorePos3 <= 9):
                autoScoreList.append(scorePos3)
            scorePos4 = matchResults[analysis.columns.index('autoScore4')]
            if (scorePos4 >= 1) and (scorePos4 <= 9):
                autoScoreList.append(scorePos4)

            numberOfMatchesPlayed += 1
            
    if numberOfMatchesPlayed > 0:
        for position in range(9):
            position += 1
            value = round(autoScoreList.count(position)/numberOfMatchesPlayed, 1)
            rsCEA['M' + str(position) + 'D'] = value
        # print(len(autoScoreList))
        
    return rsCEA